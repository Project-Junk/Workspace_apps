.class public final Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;
.super Ljava/lang/Object;
.source "NetworkStatsSummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/NetworkStatsSummaryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field public b:J

.field public c:J

.field public d:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$a;->a:Landroid/content/Context;

    return-void
.end method
