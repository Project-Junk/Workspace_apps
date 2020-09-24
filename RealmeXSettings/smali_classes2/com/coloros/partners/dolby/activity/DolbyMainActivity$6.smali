.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;
.super Ljava/lang/Object;
.source "DolbyMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iput-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-ltz p3, :cond_1

    .line 354
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)I

    move-result p1

    .line 356
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    iget-object p4, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/partners/dolby/activity/b;

    .line 1029
    iget p3, p3, Lcom/coloros/partners/dolby/activity/b;->a:I

    .line 356
    invoke-static {p2, p3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->b(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)I

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onItemClick, mode :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)I

    move-result p4

    invoke-static {p3, p4}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DolbyMainActivity"

    invoke-static {p3, p2}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)I

    move-result p3

    .line 1300
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "setEffectSceneMode, sceneMode="

    invoke-virtual {p5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "DolbyServiceManager"

    invoke-static {p5, p4}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object p4, p2, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-nez p4, :cond_0

    const-string p2, "setEffectSceneMode, mService is null"

    .line 1302
    invoke-static {p5, p2}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1306
    :cond_0
    :try_start_0
    iget-object p2, p2, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    invoke-interface {p2, p3}, Lcom/oppo/a/b/a/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "setEffectSceneMode:"

    .line 1308
    invoke-static {p5, p3, p2}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    :goto_0
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->i(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/activity/a;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)I

    move-result p3

    .line 2085
    iput p3, p2, Lcom/coloros/partners/dolby/activity/a;->a:I

    .line 360
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->i(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/activity/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/partners/dolby/activity/a;->notifyDataSetChanged()V

    .line 362
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;I)V

    .line 363
    iget-object p2, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$6;->b:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->h(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;II)V

    :cond_1
    return-void
.end method
