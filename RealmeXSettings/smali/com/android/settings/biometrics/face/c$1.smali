.class final Lcom/android/settings/biometrics/face/c$1;
.super Ljava/lang/Object;
.source "ParticleCollection.java"

# interfaces
.implements Lcom/android/settings/biometrics/face/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/face/c;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/c;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/biometrics/face/c$1;->a:Lcom/android/settings/biometrics/face/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/biometrics/face/c$1;->a:Lcom/android/settings/biometrics/face/c;

    .line 1038
    iget-object v0, v0, Lcom/android/settings/biometrics/face/c;->b:Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/android/settings/biometrics/face/c$1;->a:Lcom/android/settings/biometrics/face/c;

    .line 2038
    iget-object v2, v2, Lcom/android/settings/biometrics/face/c;->b:Ljava/util/List;

    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/settings/biometrics/face/c$1;->a:Lcom/android/settings/biometrics/face/c;

    .line 3038
    iget-object v2, v2, Lcom/android/settings/biometrics/face/c;->b:Ljava/util/List;

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/android/settings/biometrics/face/c$1;->a:Lcom/android/settings/biometrics/face/c;

    .line 4038
    iget-object p1, p1, Lcom/android/settings/biometrics/face/c;->b:Ljava/util/List;

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/c$1;->a:Lcom/android/settings/biometrics/face/c;

    .line 5038
    iget-object p1, p1, Lcom/android/settings/biometrics/face/c;->b:Ljava/util/List;

    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 70
    iget-object p1, p0, Lcom/android/settings/biometrics/face/c$1;->a:Lcom/android/settings/biometrics/face/c;

    .line 6038
    iget-object p1, p1, Lcom/android/settings/biometrics/face/c;->c:Lcom/android/settings/biometrics/face/c$a;

    .line 70
    invoke-interface {p1}, Lcom/android/settings/biometrics/face/c$a;->a()V

    :cond_2
    return-void
.end method
