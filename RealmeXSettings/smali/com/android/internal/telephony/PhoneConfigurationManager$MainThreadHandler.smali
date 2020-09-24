.class final Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/PhoneConfigurationManager$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/16 v1, 0x64

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/PhoneCapability;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$502(Lcom/android/internal/telephony/PhoneConfigurationManager;Landroid/telephony/PhoneCapability;)Landroid/telephony/PhoneCapability;

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$600(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    return-void

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not getting phone capability."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$100(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_3

    .line 155
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 156
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 157
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$400(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 161
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not updating modem status."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$100(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_5

    .line 146
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 147
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$300(Lcom/android/internal/telephony/PhoneConfigurationManager;I)V

    return-void

    .line 150
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not switching multi-sim config."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$100(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON"

    .line 132
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$100(Ljava/lang/String;)V

    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_8

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to add phoneStatus to cache. No phone object provided for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$100(Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->access$200(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/Phone;)V

    .line 142
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    return-void
.end method
