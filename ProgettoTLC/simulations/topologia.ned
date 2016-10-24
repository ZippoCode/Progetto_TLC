//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package progettotlc.simulations;
import inet.common.lifecycle.LifecycleController;
import inet.common.scenario.ScenarioManager;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.StandardHost;
import inet.node.ospfv2.OSPFRouter;
import ned.DatarateChannel;

network rete
{
    parameters:
        
        @display("bgb=6350.435,2528.6802");
        
        
        double per = default(0);
        
    types:
        channel C extends DatarateChannel
        {
            datarate = 100Mbps;
            delay = 0.1us;
            per = per;
        }
    submodules:
        R1: OSPFRouter {
            @display("p=1760.0188,222.69626");
            gates:
                ethg[4];
        }
        R2: OSPFRouter {
            @display("p=2916.6025,754.29376");
            gates:
                ethg[3];
        }
        R3: OSPFRouter {
            @display("p=3836.1226,1293.0751");
            gates:
                ethg[6];
        }
        R4: OSPFRouter {
            @display("p=4216.8613,840.4988");
            gates:
                ethg[5];
        }
        R5: OSPFRouter {
            @display("p=3259.4026,225.83875");
            gates:
                ethg[3];
        }
        R6: OSPFRouter {
            @display("p=1199.6863,926.7038");
            gates:
                ethg[4];
        }
        R7: OSPFRouter {
            @display("p=3254.2388,1774.3864");
            gates:
                ethg[4];
        }
        R8: OSPFRouter {
            
            @display("p=1855.54,1178.0238");
            
            
            gates:
                ethg[3];
        }
        R9: OSPFRouter {
            @display("p=4216.8613,1946.7964");
            gates:
                ethg[4];
        }
        R10: OSPFRouter {
            @display("p=5064.544,1487.0363");
            gates:
                ethg[5];
        }
        R11: OSPFRouter {
            @display("p=274.66876,1489.3151");
            gates:
                ethg[2];
        }
        R12: OSPFRouter {
            @display("p=1156.5837,2047.3688");
            gates:
                ethg[3];
        }
        R13: OSPFRouter {
            @display("p=2370.6377,1946.7964");
            gates:
                ethg[4];
        }
        L_UDP1: StandardHost {
            @display("p=512.715,225.83875");
            gates:
                ethg[1];
        }
        L_UDP2: StandardHost {
            @display("p=2535.8638,1321.81");
            gates:
                ethg[1];
        }
        L_UDP3: StandardHost {
            @display("p=4999.89,675.2725");
            gates:
                ethg[1];
        }
        L_UDP4: StandardHost {
            @display("p=1199.6863,1479.8525");
            gates:
                ethg[1];
        }
        L_UDP5: StandardHost {
            @display("p=5933.778,926.7038");
            gates:
                ethg[1];
        }
        L_UDP6: StandardHost {
            @display("p=2880.6838,2191.044;i=device/server");
            gates:
                ethg[1];
        }
        L_TCP1: StandardHost {
            @display("p=476.0925,756.865");
            gates:
                ethg[1];
        }
        L_TCP2: StandardHost {
            @display("p=6005.615,1637.895");
            gates:
                ethg[1];
        }
        L_TCP3: StandardHost {
            @display("p=274.66876,2160.7275");
            gates:
                ethg[1];
        }
        L_TCP4: StandardHost {
            @display("p=5150.749,2191.044");
            gates:
                ethg[1];
        }
        L_TCP5: StandardHost {
            @display("p=2226.9626,754.29376");
            gates:
                ethg[1];
        }
        L_TCP6: StandardHost {
            @display("p=4120.0312,225.83875");
            gates:
                ethg[1];
        }
        configurator: IPv4NetworkConfigurator {
            parameters:
                @display("p=4736.5103,134.2825");
        }
        scenarioManager: ScenarioManager {
            @display("p=5373.4453,129.30751");
        }
        lifecycleController: LifecycleController {
            @display("p=6063.0854,129.30751");
        }
    connections:
        R1.ethg[1] <--> C <--> R5.ethg[0];
        R1.ethg[2] <--> C <--> R2.ethg[1];
        R1.ethg[3] <--> C <--> R6.ethg[1];
        R2.ethg[2] <--> C <--> R3.ethg[0];
        R3.ethg[1] <--> C <--> R5.ethg[1];
        R3.ethg[2] <--> C <--> R4.ethg[3];
        R3.ethg[3] <--> C <--> R10.ethg[3];
        R3.ethg[4] <--> C <--> R9.ethg[2];
        R3.ethg[5] <--> C <--> R7.ethg[2];
        R4.ethg[2] <--> C <--> R10.ethg[4];
        R4.ethg[4] <--> C <--> R5.ethg[2];
        R6.ethg[2] <--> C <--> R8.ethg[2];
        R6.ethg[3] <--> C <--> R11.ethg[0];
        R7.ethg[1] <--> C <--> R13.ethg[2];
        R7.ethg[3] <--> C <--> R9.ethg[1];
        R8.ethg[1] <--> C <--> R13.ethg[1];
        R9.ethg[3] <--> C <--> R10.ethg[2];
        R11.ethg[1] <--> C <--> R12.ethg[1];
        R12.ethg[2] <--> C <--> R13.ethg[3];


        R1.ethg[0] <--> C <--> L_UDP1.ethg[0];
        R2.ethg[0] <--> C <--> L_UDP2.ethg[0];
        R4.ethg[0] <--> C <--> L_UDP3.ethg[0];
        R4.ethg[1] <--> C <--> L_TCP6.ethg[0];
        R6.ethg[0] <--> C <--> L_TCP1.ethg[0];
        R7.ethg[0] <--> C <--> L_UDP6.ethg[0];
        R8.ethg[0] <--> C <--> L_TCP5.ethg[0];
        R9.ethg[0] <--> C <--> L_TCP4.ethg[0];
        R10.ethg[0] <--> C <--> L_TCP2.ethg[0];
        R10.ethg[1] <--> C <--> L_UDP5.ethg[0];
        R12.ethg[0] <--> C <--> L_TCP3.ethg[0];
        R13.ethg[0] <--> C <--> L_UDP4.ethg[0];
}
