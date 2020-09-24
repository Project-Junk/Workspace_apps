.class public final Lcom/color/darkmode/utils/DarkModeManager$init$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/utils/DarkModeManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/color/darkmode/utils/DarkModeManager;


# direct methods
.method constructor <init>(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$init$1;->this$0:Lcom/color/darkmode/utils/DarkModeManager;

    iput-object p2, p0, Lcom/color/darkmode/utils/DarkModeManager$init$1;->$context:Landroid/content/Context;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$init$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ColorDarkMode_change_night_mode"

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_NIGHT_MODE result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$init$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, p0, v0, v0}, Lcom/color/darkmode/utils/DarkModeManager;->immediatelyUpdateDarkModeSwitch(Landroid/content/Context;ZZ)V

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$init$1;->$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/color/darkmode/utils/DarkModeManager;->immediatelyUpdateDarkModeSwitch(Landroid/content/Context;ZZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
