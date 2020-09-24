.class public abstract Lcom/android/settingslib/net/NetworkCycleDataLoader$a;
.super Ljava/lang/Object;
.source "NetworkCycleDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/NetworkCycleDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/settingslib/net/NetworkCycleDataLoader;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field public d:Landroid/net/NetworkTemplate;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/settingslib/net/NetworkCycleDataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
