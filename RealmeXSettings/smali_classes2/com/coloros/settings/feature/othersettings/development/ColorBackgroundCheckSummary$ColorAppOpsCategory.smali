.class public Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary$ColorAppOpsCategory;
.super Lcom/android/settings/applications/appops/AppOpsCategory;
.source "ColorBackgroundCheckSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorAppOpsCategory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/appops/a$c;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;-><init>(Lcom/android/settings/applications/appops/a$c;)V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary$ColorAppOpsCategory;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
