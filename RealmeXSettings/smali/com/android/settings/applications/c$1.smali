.class public final Lcom/android/settings/applications/c$1;
.super Lcom/b/a/a/a/a;
.source "AppRecommendedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/c;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/c;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/applications/c$1;->a:Lcom/android/settings/applications/c;

    invoke-direct {p0}, Lcom/b/a/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/a/a/a$a;)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    iget p1, p1, Lcom/b/a/a/a/a$a;->a:I

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppRecommendedController"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
