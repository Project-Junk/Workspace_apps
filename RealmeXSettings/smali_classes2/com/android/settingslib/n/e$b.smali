.class final Lcom/android/settingslib/n/e$b;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/n/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/n/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/n/e;


# direct methods
.method constructor <init>(Lcom/android/settingslib/n/e;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    check-cast v0, Lcom/android/settingslib/n/h;

    iget-object v1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v1, v1, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    iget-object v2, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v2, v2, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 264
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/n/h;->a(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-static {v0}, Lcom/android/settingslib/n/e;->a(Lcom/android/settingslib/n/e;)V

    .line 300
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-static {v0}, Lcom/android/settingslib/n/e;->c(Lcom/android/settingslib/n/e;)V

    .line 301
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-virtual {v0}, Lcom/android/settingslib/n/e;->c()V

    return-void
.end method

.method public final a(Lcom/android/settingslib/n/f;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-static {p1}, Lcom/android/settingslib/n/e;->a(Lcom/android/settingslib/n/e;)V

    .line 244
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-virtual {p1}, Lcom/android/settingslib/n/e;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/settingslib/n/e;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    if-ne p1, v0, :cond_0

    const-string p1, "LocalMediaManager"

    const-string v0, "onConnectedDeviceChanged() this device all ready connected!"

    .line 289
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iput-object p1, v0, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    .line 293
    invoke-direct {p0}, Lcom/android/settingslib/n/e$b;->b()V

    .line 294
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-virtual {p1}, Lcom/android/settingslib/n/e;->c()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/n/f;

    .line 251
    iget-object v1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v1, v1, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/n/e;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v1, v1, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-static {p1}, Lcom/android/settingslib/n/e;->a(Lcom/android/settingslib/n/e;)V

    .line 256
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-static {p1}, Lcom/android/settingslib/n/e;->b(Lcom/android/settingslib/n/e;)Lcom/android/settingslib/n/f;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    .line 257
    invoke-direct {p0}, Lcom/android/settingslib/n/e$b;->b()V

    .line 258
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-virtual {p1}, Lcom/android/settingslib/n/e;->c()V

    return-void
.end method

.method public final b(Lcom/android/settingslib/n/f;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 272
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-static {p1}, Lcom/android/settingslib/n/e;->c(Lcom/android/settingslib/n/e;)V

    .line 273
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-virtual {p1}, Lcom/android/settingslib/n/e;->c()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    iget-object v0, v0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 280
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-static {p1}, Lcom/android/settingslib/n/e;->c(Lcom/android/settingslib/n/e;)V

    .line 281
    iget-object p1, p0, Lcom/android/settingslib/n/e$b;->a:Lcom/android/settingslib/n/e;

    invoke-virtual {p1}, Lcom/android/settingslib/n/e;->c()V

    return-void
.end method
