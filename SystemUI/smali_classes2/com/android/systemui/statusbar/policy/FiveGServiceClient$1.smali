.class Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;
.super Landroid/os/Handler;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    .line 360
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
