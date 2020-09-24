.class public final Lcom/coloros/settings/privacy/a/i$a;
.super Ljava/lang/Object;
.source "RpmbResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/coloros/settings/privacy/a/e;

.field b:I

.field public c:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/i$a;->a:Lcom/coloros/settings/privacy/a/e;

    const/4 v1, 0x0

    .line 210
    iput v1, p0, Lcom/coloros/settings/privacy/a/i$a;->b:I

    .line 211
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    return-void
.end method
