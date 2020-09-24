.class final Lcom/coloros/settings/feature/weather/CityAddActivity$14;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Lcolor/support/v7/widget/SearchView$OnQueryTextListener;


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

    .line 917
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 8

    .line 926
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->t(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/CityAddActivity$b;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->t(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/CityAddActivity$b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1981
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v5}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1982
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v5}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v4, :cond_1

    .line 1983
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1987
    :cond_0
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v7}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/util/List;)V

    .line 1990
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v5}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 1991
    iput v6, v5, Landroid/os/Message;->what:I

    .line 1992
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1993
    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1997
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v4}, Lcom/coloros/settings/feature/weather/CityAddActivity;->v(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1998
    iget-object v4, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v4}, Lcom/coloros/settings/feature/weather/CityAddActivity;->w(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1999
    iget-object v4, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v4}, Lcom/coloros/settings/feature/weather/CityAddActivity;->u(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 2000
    iget-object v4, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v4}, Lcom/coloros/settings/feature/weather/CityAddActivity;->x(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2001
    iget-object v4, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v4}, Lcom/coloros/settings/feature/weather/CityAddActivity;->g(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setVisibility(I)V

    .line 2002
    iget-object v0, v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->s(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 929
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Z)Z

    .line 931
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->u(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 932
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->v(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->w(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 934
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->x(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 935
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->g(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setVisibility(I)V

    .line 936
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->s(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 938
    :cond_3
    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 939
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Z)Z

    .line 940
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->x(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->s(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 943
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/util/List;)V

    goto :goto_2

    .line 945
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->x(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 946
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;->a:Lcom/coloros/settings/feature/weather/CityAddActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;Z)Z

    :goto_2
    return v3
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
