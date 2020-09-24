.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$DKjB_mCxFOHomOyKLPFU9-9Dywc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$DKjB_mCxFOHomOyKLPFU9-9Dywc;->f$0:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$DKjB_mCxFOHomOyKLPFU9-9Dywc;->f$0:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    check-cast p1, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$parseComponents$4$TelephonyComponentFactory$InjectedComponents(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method
