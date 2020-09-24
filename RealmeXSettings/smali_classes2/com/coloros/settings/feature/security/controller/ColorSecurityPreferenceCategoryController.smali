.class public Lcom/coloros/settings/feature/security/controller/ColorSecurityPreferenceCategoryController;
.super Lcom/android/settings/widget/PreferenceCategoryController;
.source "ColorSecurityPreferenceCategoryController.java"


# static fields
.field private static final SECURITY_CATEGORY:Ljava/lang/String; = "security_category"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_category"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/controller/ColorSecurityPreferenceCategoryController;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorSecurityPreferenceCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    return v2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/a;

    .line 42
    invoke-virtual {v1}, Lcom/android/settingslib/core/a;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    const/4 v0, 0x3

    return v0
.end method
