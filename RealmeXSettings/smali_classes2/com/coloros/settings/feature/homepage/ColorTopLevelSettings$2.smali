.class final Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ColorTopLevelSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$2;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mSimInfoUpdatedReceiver action="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ColorTopLevelSettings"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "oppo.intent.action.SIM_INFO_UPDATE"

    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$2;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->c(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$2;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    const-class p2, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->update4GPreferenceState()V

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$2;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    const-class p2, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->updateMobileDataPreferenceState()V

    :cond_1
    return-void
.end method
