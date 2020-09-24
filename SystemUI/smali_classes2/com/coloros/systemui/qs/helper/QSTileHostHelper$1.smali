.class Lcom/coloros/systemui/qs/helper/QSTileHostHelper$1;
.super Landroid/database/ContentObserver;
.source "QSTileHostHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/helper/QSTileHostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/helper/QSTileHostHelper;Landroid/os/Handler;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$1;->this$0:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->getInstance()Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    :cond_0
    return-void
.end method
