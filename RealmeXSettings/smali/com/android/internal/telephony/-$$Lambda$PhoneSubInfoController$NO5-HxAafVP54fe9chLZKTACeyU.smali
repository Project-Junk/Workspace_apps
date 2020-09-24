.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$NO5-HxAafVP54fe9chLZKTACeyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/PhoneSubInfoController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$NO5-HxAafVP54fe9chLZKTACeyU;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    return-void
.end method


# virtual methods
.method public final checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$NO5-HxAafVP54fe9chLZKTACeyU;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getIccSimChallengeResponse$20$PhoneSubInfoController(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
