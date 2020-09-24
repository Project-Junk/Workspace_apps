.class public Lcom/coloros/systemui/notification/dnd/DndAlertActivity;
.super Landroid/app/Activity;
.source "DndAlertActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNightMode:Z

.field private mSecurityDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private dismiss()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mSecurityDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mSecurityDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissAndShow()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mSecurityDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mSecurityDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->dismiss()V

    .line 110
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->finish()V

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x20000000

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private displayDialog()V
    .locals 3

    .line 48
    new-instance v0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110303

    .line 49
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setTitle(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110307

    .line 50
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setMessage(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setChecked(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setHasCheckBox(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110309

    .line 53
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setNegativeString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11030a

    .line 54
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setPositiveString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;-><init>(Lcom/coloros/systemui/notification/dnd/DndAlertActivity;)V

    .line 55
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setOnSelectedListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->create()Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mSecurityDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setShowStatementText(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->getSecurityAlertDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 81
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mSecurityDialog:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->show()V

    .line 86
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 87
    sget v1, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {p0, v1}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mNightMode:Z

    if-eq p1, v0, :cond_1

    .line 102
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mNightMode:Z

    .line 103
    invoke-direct {p0}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->dismissAndShow()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 41
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mNightMode:Z

    .line 43
    iput-object p0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->displayDialog()V

    return-void
.end method
