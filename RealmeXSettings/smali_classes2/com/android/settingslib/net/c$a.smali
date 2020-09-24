.class public final Lcom/android/settingslib/net/c$a;
.super Lcom/android/settingslib/net/d$a;
.source "NetworkCycleChartData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/settingslib/net/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/android/settingslib/net/d$a;-><init>()V

    .line 38
    new-instance v0, Lcom/android/settingslib/net/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/c;-><init>(B)V

    iput-object v0, p0, Lcom/android/settingslib/net/c$a;->a:Lcom/android/settingslib/net/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/settingslib/net/d;
    .locals 1

    .line 2047
    iget-object v0, p0, Lcom/android/settingslib/net/c$a;->a:Lcom/android/settingslib/net/c;

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/android/settingslib/net/d;
    .locals 1

    .line 3047
    iget-object v0, p0, Lcom/android/settingslib/net/c$a;->a:Lcom/android/settingslib/net/c;

    return-object v0
.end method
