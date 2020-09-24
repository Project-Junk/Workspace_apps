.class final Lcom/coloros/settings/feature/appmanager/AppManagerFeature$5;
.super Ljava/lang/Object;
.source "AppManagerFeature.java"

# interfaces
.implements Lcom/coloros/settings/ColorSubSettings$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setBackPressedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$5;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$5;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$100(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcom/color/support/widget/ColorSearchViewAnimate;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$5;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$100(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcom/color/support/widget/ColorSearchViewAnimate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchState()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$5;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$100(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcom/color/support/widget/ColorSearchViewAnimate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->changeStateWithAnimation(I)V

    return v2

    :cond_1
    return v1
.end method
