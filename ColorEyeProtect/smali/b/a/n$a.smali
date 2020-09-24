.class public final Lb/a/n$a;
.super Ljava/lang/Object;

# interfaces
.implements La/b/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b/f$c<",
        "Lb/a/n;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lb/a/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/n$a;

    invoke-direct {v0}, Lb/a/n$a;-><init>()V

    sput-object v0, Lb/a/n$a;->a:Lb/a/n$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
