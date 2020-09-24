.class public interface abstract Lcom/github/javiersantos/licensing/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field public static final LICENSED:I = 0xb8a

.field public static final NOT_LICENSED:I = 0x1b3

.field public static final RETRY:I = 0xc48


# virtual methods
.method public abstract allowAccess()Z
.end method

.method public abstract processServerResponse(ILcom/github/javiersantos/licensing/ResponseData;)V
.end method
