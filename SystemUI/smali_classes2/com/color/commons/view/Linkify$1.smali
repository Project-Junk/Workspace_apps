.class final Lcom/color/commons/view/Linkify$1;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Lcom/color/commons/view/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/commons/view/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 0

    const/4 p0, 0x1

    if-nez p2, :cond_0

    :cond_0
    return p0
.end method
