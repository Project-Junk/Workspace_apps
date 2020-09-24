.class public final enum Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;
.super Ljava/lang/Enum;
.source "NetworkRequestErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

.field public static final enum b:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

.field private static final synthetic c:[Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    const/4 v1, 0x0

    const-string v2, "TIME_OUT"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->a:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    const/4 v2, 0x1

    const-string v3, "ABORT"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->b:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    sget-object v3, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->a:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->b:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->c:[Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;
    .locals 1

    .line 38
    const-class v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->c:[Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    return-object v0
.end method
