.class public final Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;
.super Lcom/color/darkmode/IColorDarkModeListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/utils/DarkModeManager;->changeDarkMode(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $parentLayout:Landroid/view/View;

.field final synthetic $windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;->$parentLayout:Landroid/view/View;

    iput-object p2, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;->$windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/color/darkmode/IColorDarkModeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUiModeConfigurationChangeFinish()V
    .locals 8

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "onUiModeConfigurationChangeFinish"

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    sget-object v2, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object v3, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;->$parentLayout:Landroid/view/View;

    const-string v0, "parentLayout"

    invoke-static {v3, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;->$windowManager:Landroid/view/WindowManager;

    move-object v5, p0

    check-cast v5, Lcom/color/darkmode/IColorDarkModeListener;

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/color/darkmode/utils/DarkModeManager;->access$removeLoadingView(Lcom/color/darkmode/utils/DarkModeManager;Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/IColorDarkModeListener;J)V

    return-void
.end method
