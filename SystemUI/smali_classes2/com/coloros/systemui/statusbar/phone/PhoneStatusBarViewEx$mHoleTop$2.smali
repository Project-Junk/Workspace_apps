.class final Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PhoneStatusBarViewEx.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;->INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 0

    .line 64
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/StatusBarUtils;->getScreenHoleTop()I

    move-result p0

    return p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;->invoke()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method