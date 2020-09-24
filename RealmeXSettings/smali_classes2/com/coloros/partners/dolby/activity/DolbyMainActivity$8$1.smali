.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8$1;
.super Ljava/lang/Object;
.source "DolbyMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;

    iget-object v0, v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8$1;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;

    iget-object v0, v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$8;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->g(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method
