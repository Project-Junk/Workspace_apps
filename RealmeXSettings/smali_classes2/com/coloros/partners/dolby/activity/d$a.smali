.class public final Lcom/coloros/partners/dolby/activity/d$a;
.super Ljava/lang/Object;
.source "DolbyMusicIeqItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dolby/activity/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/partners/dolby/activity/d;
    .locals 2

    .line 76
    new-instance v0, Lcom/coloros/partners/dolby/activity/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/partners/dolby/activity/d;-><init>(Lcom/coloros/partners/dolby/activity/d$a;B)V

    return-object v0
.end method
