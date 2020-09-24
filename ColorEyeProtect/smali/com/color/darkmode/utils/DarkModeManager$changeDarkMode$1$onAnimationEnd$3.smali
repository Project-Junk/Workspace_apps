.class public final Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v0, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    iget-object v0, v0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    iget-boolean v1, v1, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$isOpen:Z

    invoke-virtual {p1, v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setSystemDarkModeOpen(Landroid/content/Context;Z)V

    sget-object p1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-static {p1}, Lcom/color/darkmode/utils/DarkModeManager;->access$updateDarkModeAlarm(Lcom/color/darkmode/utils/DarkModeManager;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    iget-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    iget-object v1, p1, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$parentLayout:Landroid/view/View;

    const-string p1, "parentLayout"

    invoke-static {v1, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    iget-object v2, p1, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1$onAnimationEnd$3;->this$0:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    iget-object p0, p0, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;->$listener:Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;

    move-object v3, p0

    check-cast v3, Lcom/color/darkmode/IColorDarkModeListener;

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/color/darkmode/utils/DarkModeManager;->access$removeLoadingView(Lcom/color/darkmode/utils/DarkModeManager;Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/IColorDarkModeListener;J)V

    return-void
.end method
