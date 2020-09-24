.class final Lcom/coloros/settings/feature/weather/CityAddActivity$15;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/CityAddActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    if-nez p2, :cond_3

    .line 1204
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->z(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcolor/support/v7/widget/SearchView;

    move-result-object p2

    invoke-virtual {p2}, Lcolor/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1205
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1206
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    return p1

    .line 1210
    :cond_1
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/a/d;->a(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1212
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f121796

    invoke-static {p3, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 1214
    :cond_2
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->v(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->w(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/ListView;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1216
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->s(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1217
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->x(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object p3

    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1220
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object p3

    const/4 v2, 0x7

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1221
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1222
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object p3

    const-wide/16 v1, 0xa

    invoke-virtual {p3, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1224
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/a/e;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/coloros/settings/feature/weather/a/e;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1225
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/a/e;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 1226
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/a/e;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/coloros/settings/feature/weather/a/e;->sendMessage(Landroid/os/Message;)Z

    .line 1228
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->A(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    :cond_3
    return p1
.end method
