.class final Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$2;
.super Ljava/lang/Object;
.source "TimePowerPreferenceController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$2;->b:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$2;->b:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPreferenceController;Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSwitchPreference;IZ)V

    return-void
.end method
