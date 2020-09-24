.class final Lcom/coloros/settings/privacy/a/h$1;
.super Ljava/lang/Object;
.source "RpmbChannel.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/a/h;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/a/h;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/coloros/settings/privacy/a/h$1;->a:Lcom/coloros/settings/privacy/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 0

    .line 33
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "serviceDied l = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RpmbChannel"

    invoke-static {p2, p1}, Lcom/coloros/settings/privacy/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/coloros/settings/privacy/a/h$1;->a:Lcom/coloros/settings/privacy/a/h;

    invoke-static {p1}, Lcom/coloros/settings/privacy/a/h;->a(Lcom/coloros/settings/privacy/a/h;)Lcom/coloros/settings/privacy/a/b;

    return-void
.end method
