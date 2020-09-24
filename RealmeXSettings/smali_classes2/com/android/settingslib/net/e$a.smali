.class public final Lcom/android/settingslib/net/e$a;
.super Lcom/android/settingslib/net/d$a;
.source "NetworkCycleDataForUid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/settingslib/net/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/android/settingslib/net/d$a;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settingslib/net/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/e;-><init>(B)V

    iput-object v0, p0, Lcom/android/settingslib/net/e$a;->a:Lcom/android/settingslib/net/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/settingslib/net/d;
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/android/settingslib/net/e$a;->a:Lcom/android/settingslib/net/e;

    return-object v0
.end method

.method public final bridge synthetic b()Lcom/android/settingslib/net/d;
    .locals 1

    .line 3056
    iget-object v0, p0, Lcom/android/settingslib/net/e$a;->a:Lcom/android/settingslib/net/e;

    return-object v0
.end method
