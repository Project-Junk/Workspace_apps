.class public final Lcom/coloros/settings/feature/a/b;
.super Ljava/lang/Object;
.source "ApplicationItem.java"

# interfaces
.implements Lcom/coloros/settingslib/a;


# instance fields
.field public a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/coloros/settings/feature/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(C)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/coloros/settings/feature/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()C
    .locals 1

    const/16 v0, 0x30

    return v0
.end method
