.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;
.super Ljava/lang/Object;
.source "DolbyMainActivity.java"

# interfaces
.implements Lcom/coloros/partners/dolby/widget/DolbyEqualizerView$EqualizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dolby/activity/DolbyMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onProgressUpdate([I)V
    .locals 0

    return-void
.end method

.method public final varargs onUpdateFinished([I)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->e(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dolby/a;->a([I)V

    .line 187
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0, p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->a(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;[I)V

    .line 188
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$4;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->f(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Z

    :cond_1
    return-void
.end method
