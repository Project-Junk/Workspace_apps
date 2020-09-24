.class public Lcom/color/compat/app/job/JobInfoNative;
.super Ljava/lang/Object;
.source "JobInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/app/job/JobInfoNative$BuilderNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobInfoNative"

.field public static TYPE_PROTECT_FORE_FRAME:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static TYPE_PROTECT_FORE_NET:I = 0x1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
