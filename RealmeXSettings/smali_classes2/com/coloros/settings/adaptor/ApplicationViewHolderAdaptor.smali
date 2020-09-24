.class public Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ApplicationViewHolderAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static sInitEnable:Z = false

.field private static sIsEnable:Z


# instance fields
.field private final sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 28
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sIsEnable:Z

    return-void
.end method

.method public static getItemLayoutResId(I)I
    .locals 1

    .line 44
    invoke-static {}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->initEnabled()V

    .line 45
    sget-boolean v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sIsEnable:Z

    if-nez v0, :cond_0

    return p0

    .line 48
    :cond_0
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->getItemLayoutResId(I)I

    move-result p0

    :cond_1
    return p0
.end method

.method private static initEnabled()V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sInitEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sInitEnable:Z

    .line 35
    new-instance v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    invoke-direct {v0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;-><init>()V

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sIsEnable:Z

    :cond_0
    return-void
.end method

.method public static updateWidgetFrame(Landroid/view/View;Z)Z
    .locals 2

    .line 63
    invoke-static {}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->initEnabled()V

    .line 64
    sget-boolean v0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sIsEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0, p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->updateWidgetFrame(Landroid/view/View;Z)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public initSizeText(Landroid/view/View;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->initSizeText(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    return-void
.end method

.method public initSwitch(Landroid/view/View;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->initSwitch(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    return-void
.end method

.method public setSizeText(Landroid/widget/TextView;I)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setSizeText(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setSizeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setSizeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSummary(Landroid/widget/TextView;)Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->updateSummary(Landroid/widget/TextView;)Z

    move-result p1

    return p1
.end method

.method public updateSwitch(Landroid/view/View$OnClickListener;ZZ)Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->sAppManagerFeature:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->updateSwitch(Landroid/view/View$OnClickListener;ZZLcom/android/settings/applications/manageapplications/ApplicationViewHolder;)Z

    move-result p1

    return p1
.end method
