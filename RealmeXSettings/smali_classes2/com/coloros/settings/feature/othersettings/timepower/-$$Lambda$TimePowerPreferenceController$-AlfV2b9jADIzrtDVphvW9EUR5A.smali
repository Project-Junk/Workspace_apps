.class public final synthetic Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerPreferenceController$-AlfV2b9jADIzrtDVphvW9EUR5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;

.field private final synthetic f$1:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerPreferenceController$-AlfV2b9jADIzrtDVphvW9EUR5A;->f$0:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerPreferenceController$-AlfV2b9jADIzrtDVphvW9EUR5A;->f$1:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerPreferenceController$-AlfV2b9jADIzrtDVphvW9EUR5A;->f$0:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/-$$Lambda$TimePowerPreferenceController$-AlfV2b9jADIzrtDVphvW9EUR5A;->f$1:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->lambda$displayPreference$0$TimePowerPreferenceController(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;Landroid/view/View;)V

    return-void
.end method
