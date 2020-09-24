.class final Lcom/android/settings/dashboard/f$d;
.super Landroid/os/Handler;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/dashboard/f;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/f;Landroid/os/Looper;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/settings/dashboard/f$d;->a:Lcom/android/settings/dashboard/f;

    .line 284
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 308
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dashboard/f$d;->a:Lcom/android/settings/dashboard/f;

    .line 6046
    invoke-virtual {p1, v1}, Lcom/android/settings/dashboard/f;->b(Z)V

    :goto_1
    return-void

    .line 303
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/h/c;

    .line 304
    iget-object v0, p0, Lcom/android/settings/dashboard/f$d;->a:Lcom/android/settings/dashboard/f;

    .line 5046
    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settingslib/h/c;)V

    return-void

    .line 291
    :cond_3
    iget-object p1, p0, Lcom/android/settings/dashboard/f$d;->a:Lcom/android/settings/dashboard/f;

    .line 1046
    iget-object p1, p1, Lcom/android/settings/dashboard/f;->a:Lcom/android/settings/dashboard/b;

    .line 292
    iget-object v0, p0, Lcom/android/settings/dashboard/f$d;->a:Lcom/android/settings/dashboard/f;

    .line 2046
    iget-object v0, v0, Lcom/android/settings/dashboard/f;->b:Ljava/lang/String;

    .line 292
    invoke-interface {p1, v0}, Lcom/android/settings/dashboard/b;->a(Ljava/lang/String;)Lcom/android/settingslib/h/b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 293
    invoke-virtual {p1}, Lcom/android/settingslib/h/b;->b()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 296
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/h/b;->a()Ljava/util/List;

    move-result-object p1

    .line 297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/h/c;

    .line 298
    iget-object v2, p0, Lcom/android/settings/dashboard/f$d;->a:Lcom/android/settings/dashboard/f;

    .line 3046
    invoke-virtual {v2, v0}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settingslib/h/c;)V

    goto :goto_2

    .line 300
    :cond_5
    iget-object p1, p0, Lcom/android/settings/dashboard/f$d;->a:Lcom/android/settings/dashboard/f;

    .line 4046
    invoke-virtual {p1, v1}, Lcom/android/settings/dashboard/f;->b(Z)V

    :cond_6
    :goto_3
    return-void
.end method
