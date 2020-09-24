.class public Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Iris5DialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "iris5_check"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1042
    new-instance v0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$1;-><init>(Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;)V

    .line 1048
    new-instance v1, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;-><init>(Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;Z)V

    .line 1055
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
