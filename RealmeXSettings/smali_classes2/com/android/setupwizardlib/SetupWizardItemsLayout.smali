.class public Lcom/android/setupwizardlib/SetupWizardItemsLayout;
.super Lcom/android/setupwizardlib/SetupWizardListLayout;
.source "SetupWizardItemsLayout.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->getAdapter()Lcom/android/setupwizardlib/items/b;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/setupwizardlib/items/b;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43
    invoke-super {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 44
    instance-of v1, v0, Lcom/android/setupwizardlib/items/b;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Lcom/android/setupwizardlib/items/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
