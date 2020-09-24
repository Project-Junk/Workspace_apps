.class final Lcom/coloros/settings/utils/at$a;
.super Ljava/lang/Object;
.source "RingtoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/coloros/settings/utils/at$a;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    new-instance v0, Lcom/coloros/settings/utils/at$a;

    invoke-direct {v0}, Lcom/coloros/settings/utils/at$a;-><init>()V

    sput-object v0, Lcom/coloros/settings/utils/at$a;->a:Lcom/coloros/settings/utils/at$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 220
    iput-object v0, p0, Lcom/coloros/settings/utils/at$a;->b:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/coloros/settings/utils/at$a;->c:Ljava/lang/String;

    return-void
.end method
