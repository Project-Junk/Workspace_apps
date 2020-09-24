.class public Lcom/color/compat/internal/policy/PhoneWindowNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneWindowNative"


# instance fields
.field private mWindowWrapper:Lcom/color/inner/internal/policy/PhoneWindowWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/inner/internal/policy/PhoneWindowWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/internal/policy/PhoneWindowWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Lcom/color/inner/internal/policy/PhoneWindowWrapper;

    return-void
.end method


# virtual methods
.method public getWindow()Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/color/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Lcom/color/inner/internal/policy/PhoneWindowWrapper;

    invoke-virtual {p0}, Lcom/color/inner/internal/policy/PhoneWindowWrapper;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method
