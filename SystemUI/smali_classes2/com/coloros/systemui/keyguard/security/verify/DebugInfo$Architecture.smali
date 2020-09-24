.class public final Lcom/coloros/systemui/keyguard/security/verify/DebugInfo$Architecture;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Architecture"
.end annotation


# static fields
.field public static final IS_32BIT:I = 0x2

.field public static final IS_64BIT:I = 0x1

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 1

    .line 72
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1

    .line 68
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
