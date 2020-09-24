.class public Lcom/coloros/systemui/blackscreen/ui/BlackScreenGuideActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BlackScreenGuideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackScreenGuideActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenGuideActivity"

    const-string v2, "startActivity()"

    .line 51
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    const-class v1, Lcom/coloros/systemui/blackscreen/ui/BlackScreenGuideActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0052

    .line 39
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/ui/BlackScreenGuideActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setStatusBarVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method public onEnableBtnClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "Statusbar"

    const-string v0, "BlackScreenGuideActivity"

    const-string v1, "onEnableBtnClick()"

    .line 44
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/ui/BlackScreenGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->enableBlackScreenMode(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenStorageUtil;->saveGuideShownRecord(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/ui/BlackScreenGuideActivity;->finish()V

    return-void
.end method
