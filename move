using JetBrains.Annotations;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class move : MonoBehaviour
{
    public GameObject Cylinder;
    public GameObject Prefab;
    //最先调用
    private void Awake()
    {
        Debug.Log("awake");
    }
    //勾选就调用
    private void OnEnable()
    {
        //Debug.Log("onenable");
    }
    // Start is called before the first frame update
    void Start()
    {

        //GameObject go = this.gameObject;
        Debug.Log(gameObject.name);
        Debug.Log("start");
        //activeInHierachy代表当前真正状态，activeSelf代表自身激活状态
        //获取transform组件 
        Debug.Log(transform.position);
        //获取其他组件
        BoxCollider bc = GetComponent<BoxCollider>();
        //GetComponentInChildren<>();
        //添加组件
        //gameObject.AddComponent<AudioSource>();
        //寻找物体,以下是查找名字示例，还可以查找标签
        GameObject cube = GameObject.Find("Cube");
        Debug.Log(cube.name);
        cube.SetActive(false);
        //通过预设体实例化，并且可以作为当前物体的子物体/某个位置
        GameObject go=Instantiate(Prefab,transform);
        //Instantiate(Prefab,Vector3.zero,Quaternion.identity);
        //销毁
        //Destroy(go);
    }
    // Update is called once per frame
    //每一帧调用一次
    void Update()
    {
        //不要轻易加内容
    }
    //跟着update执行
    private void LateUpdate()
    {
        
    }
    //每隔固定间隔可调用一次
    private void FixedUpdate()
    {
        
    }
    //非激活时调用一次
    private void OnDisable()
    {
        //Debug.Log("ondisable");
    }
    //销毁后调用一次
    private void OnDestroy()
    {
        //Debug.Log("ondestroy");
    }
}
-----------------------------------------------------------------
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class player : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");
        Vector3 dir = new Vector3(horizontal,0,vertical);
        //朝向量方向移动，下面乘以了一个Time.deltaTime会从每帧转为每秒
        transform.Translate(dir*2*Time.deltaTime);
    }
}

