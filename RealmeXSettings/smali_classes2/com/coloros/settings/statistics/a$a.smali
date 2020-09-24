.class public final Lcom/coloros/settings/statistics/a$a;
.super Ljava/lang/Object;
.source "DcsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/statistics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/coloros/settings/statistics/a$a;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/coloros/settings/statistics/a$a;->b:Ljava/util/Map;

    .line 75
    iput-boolean p3, p0, Lcom/coloros/settings/statistics/a$a;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 79
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/statistics/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/statistics/a$a;->b:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/coloros/settings/statistics/a$a;->c:Z

    const-string v4, "20012"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
