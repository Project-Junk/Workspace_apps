.class Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;
.super Ljava/lang/Thread;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindServiceThread"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;Lcom/android/internal/telephony/WapPushOverSms$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->access$200(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    return-void
.end method
