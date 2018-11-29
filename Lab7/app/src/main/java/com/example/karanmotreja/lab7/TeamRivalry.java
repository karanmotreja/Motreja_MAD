package com.example.karanmotreja.lab7;

public class TeamRivalry
{
    private String teamRival;
    private String teamRivalURL;

    private void setRivalaryInfo(Integer rivalry){
        switch (rivalry){
            case 0: //49ers
                teamRival="the Seattle Seahawks";
                teamRivalURL="https://www.seahawks.com";
                break;
            case 1: //cowboys
                teamRival="the Philadelphia Eagles";
                teamRivalURL="https://www.philadelphiaeagles.com";
                break;
            case 2: //broncos
                teamRival="the Kansas City Chiefs";
                teamRivalURL="https://www.chiefs.com";
                break;
            case 3: //Pats
                teamRival="the New York Giants";
                teamRivalURL ="https://www.giants.com";
                break;
            case 4: //Steelers
                teamRival="the Baltimore Ravens";
                teamRivalURL="https://www.baltimoreravens.com";
                break;
            default:
                teamRival="at the following link!";
                teamRivalURL="http://www.espn.com/nfl/story/_/page/32for32x160705/biggest-rival-all-32-nfl-teams-green-bay-packers-minnesota-vikings-washington-redskins-dallas-cowboys#AFC%20N";
        }
    }

    public void setRivalry(Integer rivalry){

        setRivalaryInfo(rivalry);
    }

    public void setRivalryURL(Integer rivalry){

        setRivalaryInfo(rivalry);
    }

    public String getTeamRival(){

        return teamRival;
    }

    public String getTeamRivalURL(){

        return teamRivalURL;
    }
}
