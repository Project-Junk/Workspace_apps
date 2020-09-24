.class public Lcom/android/settingslib/net/d$a;
.super Ljava/lang/Object;
.source "NetworkCycleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/net/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settingslib/net/d;

    invoke-direct {v0}, Lcom/android/settingslib/net/d;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/net/d$a;->a:Lcom/android/settingslib/net/d;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/android/settingslib/net/d$a;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/android/settingslib/net/d$a;->b()Lcom/android/settingslib/net/d;

    move-result-object v0

    .line 1022
    iput-wide p1, v0, Lcom/android/settingslib/net/d;->c:J

    return-object p0
.end method

.method public a()Lcom/android/settingslib/net/d;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/android/settingslib/net/d$a;->b()Lcom/android/settingslib/net/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/android/settingslib/net/d$a;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/android/settingslib/net/d$a;->b()Lcom/android/settingslib/net/d;

    move-result-object v0

    .line 2022
    iput-wide p1, v0, Lcom/android/settingslib/net/d;->d:J

    return-object p0
.end method

.method protected b()Lcom/android/settingslib/net/d;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/net/d$a;->a:Lcom/android/settingslib/net/d;

    return-object v0
.end method

.method public final c(J)Lcom/android/settingslib/net/d$a;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/settingslib/net/d$a;->b()Lcom/android/settingslib/net/d;

    move-result-object v0

    .line 3022
    iput-wide p1, v0, Lcom/android/settingslib/net/d;->e:J

    return-object p0
.end method
