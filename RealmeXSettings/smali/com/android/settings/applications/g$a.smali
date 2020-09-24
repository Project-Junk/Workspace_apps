.class public final Lcom/android/settings/applications/g$a;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcom/android/settings/applications/g$a;->a:I

    .line 345
    iput v0, p0, Lcom/android/settings/applications/g$a;->b:I

    const-wide/16 v1, 0x0

    .line 346
    iput-wide v1, p0, Lcom/android/settings/applications/g$a;->c:J

    .line 347
    iput v0, p0, Lcom/android/settings/applications/g$a;->d:I

    return-void
.end method
