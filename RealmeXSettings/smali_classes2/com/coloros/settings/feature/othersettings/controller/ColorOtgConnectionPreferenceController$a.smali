.class final Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "ColorOtgConnectionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;

    .line 191
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->access$100(Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "ColorOtgConnectionPreferenceController"

    const-string v0, "OtgChangeObserver"

    .line 197
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;)V

    :cond_0
    return-void
.end method
