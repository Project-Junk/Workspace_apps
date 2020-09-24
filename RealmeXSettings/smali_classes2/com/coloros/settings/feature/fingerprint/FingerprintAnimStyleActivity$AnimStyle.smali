.class Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;
.super Ljava/lang/Object;
.source "FingerprintAnimStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimStyle"
.end annotation


# instance fields
.field private mAnimResId:I

.field private mIcResId:I

.field private mKey:Ljava/lang/String;

.field private mSelected:Z

.field private mSoundResId:I


# direct methods
.method constructor <init>(IIILjava/lang/String;Z)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mIcResId:I

    .line 109
    iput p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mAnimResId:I

    .line 110
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mSoundResId:I

    .line 111
    iput-object p4, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mKey:Ljava/lang/String;

    .line 112
    iput-boolean p5, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mSoundResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mAnimResId:I

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mSelected:Z

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mIcResId:I

    return p0
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->mSelected:Z

    return-void
.end method
