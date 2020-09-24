.class public abstract Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader$a;
.source "NetworkCycleDataForUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;",
        ">",
        "Lcom/android/settingslib/net/NetworkCycleDataLoader$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->a:Ljava/util/List;

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a<",
            "TT;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
