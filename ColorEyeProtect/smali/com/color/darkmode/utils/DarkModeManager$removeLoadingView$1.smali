.class final Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/utils/DarkModeManager;->removeLoadingView(Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/IColorDarkModeListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/color/darkmode/IColorDarkModeListener;

.field final synthetic $view:Landroid/view/View;

.field final synthetic $windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/view/View;Lcom/color/darkmode/IColorDarkModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;->$windowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;->$listener:Lcom/color/darkmode/IColorDarkModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/darkmode/utils/DarkModeManager;->access$setMIsLoading$p(Lcom/color/darkmode/utils/DarkModeManager;Z)V

    iget-object v0, p0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;->$windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;->$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;->$listener:Lcom/color/darkmode/IColorDarkModeListener;

    invoke-static {p0}, Lcom/color/darkmode/ColorDarkModeHelper;->unregisterOnUiModeConfigurationChangeFinishListener(Lcom/color/darkmode/IColorDarkModeListener;)V

    throw v0

    :catch_0
    :goto_0
    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;->$listener:Lcom/color/darkmode/IColorDarkModeListener;

    invoke-static {p0}, Lcom/color/darkmode/ColorDarkModeHelper;->unregisterOnUiModeConfigurationChangeFinishListener(Lcom/color/darkmode/IColorDarkModeListener;)V

    return-void
.end method
