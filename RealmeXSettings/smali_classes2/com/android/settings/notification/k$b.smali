.class public final Lcom/android/settings/notification/k$b;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 473
    iput v0, p0, Lcom/android/settings/notification/k$b;->a:I

    .line 474
    iput v0, p0, Lcom/android/settings/notification/k$b;->b:I

    const-wide/16 v1, 0x0

    .line 475
    iput-wide v1, p0, Lcom/android/settings/notification/k$b;->c:J

    .line 476
    iput v0, p0, Lcom/android/settings/notification/k$b;->d:I

    return-void
.end method
