.class final Lcom/coloros/partners/dolby/activity/DolbyMainActivity$2;
.super Ljava/lang/Object;
.source "DolbyMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 137
    iput-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$2;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$2;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {v0}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->c(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DolbyMainActivity"

    const-string v0, "onClick(View v),  mService is null"

    .line 142
    invoke-static {p1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0569

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity$2;->a:Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;->d(Lcom/coloros/partners/dolby/activity/DolbyMainActivity;)V

    :goto_0
    return-void
.end method
