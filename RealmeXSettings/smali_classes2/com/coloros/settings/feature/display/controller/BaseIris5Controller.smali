.class public abstract Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;
.super Lcom/android/settings/core/a;
.source "BaseIris5Controller.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$a;
    }
.end annotation


# instance fields
.field protected mIsSourceQhd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->az(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->mIsSourceQhd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->cancelClick(Z)V

    return-void
.end method

.method private cancelClick(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected doReduce(Z)V
    .locals 1

    .line 84
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->updateUiData(Z)V

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;I)V

    return-void
.end method

.method protected isShowDialogFhd()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->isSupport120With2K()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupport120With2K()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 42
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->isSupport120With2K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->isShowDialogFhd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->showDialogFHD(Z)V

    return p2

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->doReduce(Z)V

    return p2

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->updateUiData(Z)V

    .line 52
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/utils/v;->a(ZZLandroid/content/Context;)V

    return p2
.end method

.method protected showDialogFHD(Z)V
    .locals 2

    .line 68
    new-instance v0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$1;-><init>(Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;Z)V

    .line 74
    new-instance v1, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$2;-><init>(Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;Z)V

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected abstract updateUiData(Z)V
.end method
