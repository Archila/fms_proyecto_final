
//Este módulo asigna direcciones IPv4 a los host
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
//Este módulo sirve para el ruteo wireless de los host
import inet.node.inet.AdhocHost;
//Estos módulos son para el uso de la potencia de transmisión simensional
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211DimensionalRadioMedium;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
//Este módulo integra canvas y visualizadores osg
import inet.visualizer.common.IntegratedVisualizer;


network CrosstalkShowcaseBaseNetwork
{
    @display("bgb=661,400");
    submodules:
        host1: AdhocHost {
            @display("p=231,201");
        }
        host2: AdhocHost {
            @display("p=500,201");
        }
        host3: AdhocHost {
            @display("p=360,60");
        }
        host4: AdhocHost {
            @display("p=360,320");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=75,55");
        }
        visualizer: IntegratedVisualizer {
            @display("p=75,125");
        }
}

network CrosstalkShowcaseOneScalarRadioMediumModule extends CrosstalkShowcaseBaseNetwork
{
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=74,191");
        }
}

network CrosstalkShowcaseTwoScalarRadioMediumModules extends CrosstalkShowcaseBaseNetwork
{
    submodules:
        radioMedium1: Ieee80211ScalarRadioMedium {
            @display("p=74,191");
        }
        radioMedium2: Ieee80211ScalarRadioMedium {
            @display("p=74,255");
        }
}

network CrosstalkShowcasePartiallyOverlappingFrequencyBands extends CrosstalkShowcaseBaseNetwork
{
    submodules:
        radioMedium: Ieee80211DimensionalRadioMedium {
            @display("p=74,184");
        }
}